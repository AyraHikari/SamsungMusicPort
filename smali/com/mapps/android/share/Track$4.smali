.class Lcom/mapps/android/share/Track$4;
.super Landroid/os/Handler;
.source "SourceFile"


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

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$4;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$4;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/Track$4;->val$codeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/Track$4;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/mapps/android/share/Track$4;->this$0:Lcom/mapps/android/share/Track;

    iget-object v1, p0, Lcom/mapps/android/share/Track$4;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/share/Track$4;->val$codeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/share/Track$4;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->getApparrList(Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
