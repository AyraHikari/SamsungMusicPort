.class Lcom/mapps/android/share/Track$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$apparrListHandler:Landroid/os/Handler;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$media_type:I

.field private final synthetic val$trackCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$trackErrorHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$5;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$5;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/mapps/android/share/Track$5;->val$media_type:I

    iput-object p4, p0, Lcom/mapps/android/share/Track$5;->val$codeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/Track$5;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iput-object p6, p0, Lcom/mapps/android/share/Track$5;->val$trackCompleteHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/mapps/android/share/Track$5;->val$apparrListHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/mapps/android/share/Track$5;->val$trackErrorHandler:Landroid/os/Handler;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/Track$5;)Lcom/mapps/android/share/Track;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/mapps/android/share/Track$5;->this$0:Lcom/mapps/android/share/Track;

    return-object p0
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 16

    move-object/from16 v13, p0

    .line 229
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/mapps/android/share/Track$5$1;

    iget-object v6, v13, Lcom/mapps/android/share/Track$5;->val$ctx:Landroid/content/Context;

    iget v7, v13, Lcom/mapps/android/share/Track$5;->val$media_type:I

    iget-object v8, v13, Lcom/mapps/android/share/Track$5;->val$codeType:Ljava/lang/String;

    iget-object v9, v13, Lcom/mapps/android/share/Track$5;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    iget-object v10, v13, Lcom/mapps/android/share/Track$5;->val$trackCompleteHandler:Landroid/os/Handler;

    iget-object v11, v13, Lcom/mapps/android/share/Track$5;->val$apparrListHandler:Landroid/os/Handler;

    iget-object v12, v13, Lcom/mapps/android/share/Track$5;->val$trackErrorHandler:Landroid/os/Handler;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/mapps/android/share/Track$5$1;-><init>(Lcom/mapps/android/share/Track$5;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Landroid/os/Message;Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
