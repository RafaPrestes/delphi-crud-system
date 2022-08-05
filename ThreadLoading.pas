unit ThreadLoading;

interface

uses
    Classes, SysUtils, Forms, ExtCtrls, SyncObjs, Windows, Messages, Variants, Graphics, Controls,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Menus,
  ComCtrls, GIFImg, Buttons, ComObj;

type
  TProcedure = procedure of object;
  ThreadLoad = class(TThread)
  private
    { Private declarations }
    FTerminateEvent: TEvent;
    FOwnerForm: TForm;
  protected
    _proc : TProcedure;
    procedure Execute; override;
  public
    constructor Create(proc: TProcedure);
  end;

implementation

uses UntPesquisar;

constructor ThreadLoad.Create(proc: TProcedure);
begin
  inherited Create(true);
  FTerminateEvent := TSimpleEvent.Create;
  Resume;
   _proc := proc;
end;

procedure ThreadLoad.Execute;
begin
if FTerminateEvent.WaitFor(2000) = wrTimeout then
  Synchronize(_proc);
  Form1.Image1.Visible := false;
end;

end.
