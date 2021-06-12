.class public Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarChanged"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

.field private b:I


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 363
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->b:I

    .line 364
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->c(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->d(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->b:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->e(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->g(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->a()Z

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 379
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z

    .line 380
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->h(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->i(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->a(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->b:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->a(J)Z

    .line 383
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "321"

    const-string v1, "4384"

    .line 384
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
