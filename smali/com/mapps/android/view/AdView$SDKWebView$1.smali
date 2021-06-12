.class Lcom/mapps/android/view/AdView$SDKWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKWebView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1709
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1712
    :pswitch_0
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->isOtherType()Z

    move-result v0

    iput-boolean v0, p2, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    .line 1714
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1715
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
