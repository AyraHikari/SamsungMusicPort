.class Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekHoverListener"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 175
    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setPopupOffset(Landroid/view/View;II)V

    .line 176
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 166
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a(Landroid/widget/SeekBar;IZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 168
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->b()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 169
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a()I

    move-result v0

    .line 168
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a(Landroid/widget/SeekBar;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->b()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 146
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a()I

    move-result v1

    .line 145
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a(Landroid/widget/SeekBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->b()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 157
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->a()I

    move-result v2

    .line 156
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->a(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method
