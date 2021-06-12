.class Lcom/facebook/appevents/AppEvent$SerializationProxyV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final inBackground:Z

.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    .line 231
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    .line 232
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->inBackground:Z

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 236
    new-instance v6, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->inBackground:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    return-object v6
.end method
