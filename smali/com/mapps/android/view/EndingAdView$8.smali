.class Lcom/mapps/android/view/EndingAdView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->startEndingAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$8;)Lcom/mapps/android/view/EndingAdView;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object p0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 8

    .line 218
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$13(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$14(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$15(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v5, p1, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 219
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mapps/android/view/EndingAdView$8$1;

    invoke-direct {v7, p0}, Lcom/mapps/android/view/EndingAdView$8$1;-><init>(Lcom/mapps/android/view/EndingAdView$8;)V

    .line 218
    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    return-void
.end method
