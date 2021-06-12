.class public Lcom/samsung/android/app/music/cover/CoverQueueActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "CoverQueueActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;-><init>()V

    .line 28
    sget-object v2, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->a(Landroid/view/Window;)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->a()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->finish()V

    :cond_0
    return-void
.end method
