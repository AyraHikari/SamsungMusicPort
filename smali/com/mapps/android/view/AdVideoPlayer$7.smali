.class Lcom/mapps/android/view/AdVideoPlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object p0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 8

    .line 210
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$13(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java"

    new-instance v7, Lcom/mapps/android/view/AdVideoPlayer$7$1;

    invoke-direct {v7, p0}, Lcom/mapps/android/view/AdVideoPlayer$7$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$7;)V

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    return-void
.end method
