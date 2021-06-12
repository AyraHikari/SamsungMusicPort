.class Lcom/samsung/android/app/music/activity/CertificationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/CertificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/CertificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/CertificationActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$1;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$1;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/CertificationActivity;->a(Lcom/samsung/android/app/music/activity/CertificationActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CertificationActivity"

    const-string v1, "onBackPressed : Go back."

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$1;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/CertificationActivity;->a(Lcom/samsung/android/app/music/activity/CertificationActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const-string v0, "CertificationActivity"

    const-string v1, "onBackPressed : Close notice."

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/CertificationActivity$1;->a:Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/CertificationActivity;->finish()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
