.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;
.super Landroid/app/TimePickerDialog;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidTimePickerDialogImpl"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
    .locals 6

    .line 84
    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$1;

    invoke-direct {v2, p5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 90
    iput-object p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    .line 93
    new-instance p1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/TimePickerDialog;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public isShowingImpl()Z
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public setTitleImpl(I)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/TimePickerDialog;->setTitle(I)V

    return-void
.end method

.method public showImpl()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
