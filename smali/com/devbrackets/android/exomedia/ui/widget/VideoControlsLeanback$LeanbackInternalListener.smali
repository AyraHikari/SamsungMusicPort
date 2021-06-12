.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LeanbackInternalListener"
.end annotation


# instance fields
.field final synthetic c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 550
    :cond_1
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v2, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 531
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 532
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->c:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v2, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b(J)V

    const/4 v0, 0x1

    return v0
.end method
