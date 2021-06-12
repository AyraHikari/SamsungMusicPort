.class Lcom/mapps/android/view/AdView$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$13;

.field private final synthetic val$codeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$13;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$13$1;->val$codeType:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    return-object p0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 8

    .line 289
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$59(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$60(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$61(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v4

    .line 290
    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->this$1:Lcom/mapps/android/view/AdView$13;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$57(Lcom/mapps/android/view/AdView;)I

    move-result v5

    iget-object v6, p0, Lcom/mapps/android/view/AdView$13$1;->val$codeType:Ljava/lang/String;

    new-instance v7, Lcom/mapps/android/view/AdView$13$1$1;

    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1;->val$codeType:Ljava/lang/String;

    invoke-direct {v7, p0, p1}, Lcom/mapps/android/view/AdView$13$1$1;-><init>(Lcom/mapps/android/view/AdView$13$1;Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    return-void
.end method
