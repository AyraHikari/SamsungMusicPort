.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;->a:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 488
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
