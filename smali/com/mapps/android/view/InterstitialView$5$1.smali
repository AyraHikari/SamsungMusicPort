.class Lcom/mapps/android/view/InterstitialView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$5;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$5;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$5$1;->this$1:Lcom/mapps/android/view/InterstitialView$5;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 509
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$5$1;->this$1:Lcom/mapps/android/view/InterstitialView$5;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView$5;->access$0(Lcom/mapps/android/view/InterstitialView$5;)Lcom/mapps/android/view/InterstitialView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$13(Lcom/mapps/android/view/InterstitialView;)V

    .line 510
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$5$1;->this$1:Lcom/mapps/android/view/InterstitialView$5;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView$5;->access$0(Lcom/mapps/android/view/InterstitialView$5;)Lcom/mapps/android/view/InterstitialView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapps/android/view/InterstitialView;->finish()V

    return-void
.end method
