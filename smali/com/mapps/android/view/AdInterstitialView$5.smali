.class Lcom/mapps/android/view/AdInterstitialView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$fun:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$5;->val$fun:Ljava/util/concurrent/Callable;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$5;->val$fun:Ljava/util/concurrent/Callable;

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$6(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V

    return-void
.end method
