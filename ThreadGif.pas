unit ThreadGif;

interface

uses
  Classes, GIFImg;

type
  ThreadGifLoad = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure loadGif(sender : TObject);
    constructor cria();
  end;

implementation

uses UntPesquisar;

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure ThreadGifLoad.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ ThreadGifLoad }

constructor ThreadGifLoad.cria;
begin
  Create(false);
  FreeOnTerminate := true;
end;

procedure ThreadGifLoad.Execute;
begin
    (Form1.Image1.Picture.Graphic as TGIFImage).Animate := true;
    Form1.Image1.Visible := true;
end;

procedure ThreadGifLoad.loadGif(sender : TObject);
begin


end;

end.
