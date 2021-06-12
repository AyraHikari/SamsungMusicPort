.class Lcom/mapps/android/share/Track$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$trackCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$trackErrorHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$8;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$8;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/Track$8;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iput-object p4, p0, Lcom/mapps/android/share/Track$8;->val$trackCompleteHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/mapps/android/share/Track$8;->val$trackErrorHandler:Landroid/os/Handler;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/mapps/android/share/Track$8;->this$0:Lcom/mapps/android/share/Track;

    return-object p0
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 13

    move-object v10, p0

    .line 354
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/mapps/android/share/Track$8$1;

    iget-object v5, v10, Lcom/mapps/android/share/Track$8;->val$ctx:Landroid/content/Context;

    iget-object v7, v10, Lcom/mapps/android/share/Track$8;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iget-object v8, v10, Lcom/mapps/android/share/Track$8;->val$trackCompleteHandler:Landroid/os/Handler;

    iget-object v9, v10, Lcom/mapps/android/share/Track$8;->val$trackErrorHandler:Landroid/os/Handler;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/mapps/android/share/Track$8$1;-><init>(Lcom/mapps/android/share/Track$8;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Landroid/os/Message;Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;Landroid/content/Context;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
