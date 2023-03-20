.class Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;
.super Ljava/lang/Object;
.source "SeekBarSdlCompat.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    return-void
.end method
