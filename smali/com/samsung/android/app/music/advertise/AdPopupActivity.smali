.class public Lcom/samsung/android/app/music/advertise/AdPopupActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/advertise/AdFragmentFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)Landroid/support/v4/app/Fragment;

    move-result-object p1

    const p2, 0x1020002

    .line 75
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Advert.AdPopupActivity"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAdPopup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/advertise/AdPopupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_BOOLEAN_CHANGED_CP"

    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a:Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a:Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a:Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;->a()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->overridePendingTransition(II)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_BOOLEAN_CHANGED_CP"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(IZ)V

    .line 50
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->b:I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->b:I

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 57
    iget v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->b:I

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ad_video"

    .line 59
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->b:I

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    if-ne v0, v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ad_post_roll"

    .line 64
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
