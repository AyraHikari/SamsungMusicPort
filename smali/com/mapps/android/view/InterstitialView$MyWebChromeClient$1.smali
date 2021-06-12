.class Lcom/mapps/android/view/InterstitialView$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient$1;->this$1:Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 996
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
