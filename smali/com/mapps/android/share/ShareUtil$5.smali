.class Lcom/mapps/android/share/ShareUtil$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$media_type:I

.field private final synthetic val$track:Lcom/mapps/android/share/Track;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/Track;Landroid/content/Context;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$5;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$5;->val$track:Lcom/mapps/android/share/Track;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$5;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/mapps/android/share/ShareUtil$5;->val$media_type:I

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$5;->val$codeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/ShareUtil$5;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$5;->val$track:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$5;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$5;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v2, v2, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$5;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v3, v3, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$5;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v4, v4, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    iget v5, p0, Lcom/mapps/android/share/ShareUtil$5;->val$media_type:I

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$5;->val$codeType:Ljava/lang/String;

    new-instance v7, Lcom/mapps/android/share/ShareUtil$5$1;

    iget-object v8, p0, Lcom/mapps/android/share/ShareUtil$5;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    invoke-direct {v7, p0, v8}, Lcom/mapps/android/share/ShareUtil$5$1;-><init>(Lcom/mapps/android/share/ShareUtil$5;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/Track;->requestConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
