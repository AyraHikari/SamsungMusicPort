.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;
.super Lcom/sec/android/touchwiz/app/TwTimePickerDialog;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwTimePickerDialogImpl"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
    .locals 6

    .line 38
    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl$1;

    invoke-direct {v2, p5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 44
    iput-object p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->cancel()V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public isShowingImpl()Z
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onTimeChanged(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 0

    return-void
.end method

.method public setTitleImpl(I)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->setTitle(I)V

    return-void
.end method

.method public showImpl()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->show()V

    return-void
.end method
