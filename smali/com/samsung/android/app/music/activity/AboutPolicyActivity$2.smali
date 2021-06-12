.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;->c:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
