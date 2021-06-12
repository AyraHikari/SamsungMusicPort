.class Lcom/mapps/android/share/ShareUtil$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$adViewCodeCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

.field private final synthetic val$media_type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$10;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$10;->val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$10;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/mapps/android/share/ShareUtil$10;->val$media_type:I

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$10;->val$codeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/ShareUtil$10;->val$adViewCodeCompleteHandler:Landroid/os/Handler;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$10;)Lcom/mapps/android/share/ShareUtil;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/mapps/android/share/ShareUtil$10;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object p0
.end method


# virtual methods
.method public onReqeustConfComplete()V
    .locals 8

    .line 502
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/mapps/android/share/ShareUtil$10$1;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$10;->val$ctx:Landroid/content/Context;

    iget v4, p0, Lcom/mapps/android/share/ShareUtil$10;->val$media_type:I

    iget-object v5, p0, Lcom/mapps/android/share/ShareUtil$10;->val$codeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$10;->val$adViewCodeCompleteHandler:Landroid/os/Handler;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mapps/android/share/ShareUtil$10$1;-><init>(Lcom/mapps/android/share/ShareUtil$10;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onReqeustConfError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$10;->val$listener:Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

    invoke-interface {v0, p1}, Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;->AdViewCodeError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    return-void
.end method
