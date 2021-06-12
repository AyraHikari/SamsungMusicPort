.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;
    }
.end annotation


# instance fields
.field private final mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
    .locals 8

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TwTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;

    :goto_1
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;->isShowingImpl()Z

    move-result v0

    return v0
.end method

.method public setTitle(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;->setTitleImpl(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->mTimePickerDialogImpl:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$TimePickerDialogImpl;->showImpl()V

    return-void
.end method
