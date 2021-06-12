.class final Lcom/facebook/appevents/AppEventQueue$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field final synthetic val$appEvents:Lcom/facebook/appevents/SessionEventsState;

.field final synthetic val$flushState:Lcom/facebook/appevents/FlushStatistics;

.field final synthetic val$postRequest:Lcom/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$postRequest:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$flushState:Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$postRequest:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$flushState:Lcom/facebook/appevents/FlushStatistics;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/AppEventQueue;->access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    return-void
.end method
