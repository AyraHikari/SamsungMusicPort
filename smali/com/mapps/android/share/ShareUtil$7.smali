.class Lcom/mapps/android/share/ShareUtil$7;
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

.field private final synthetic val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$7;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$7;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    invoke-interface {v0}, Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;->onReqeustConfComplete()V

    .line 247
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
