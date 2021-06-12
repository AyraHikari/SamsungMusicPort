.class final Lcom/facebook/share/internal/CameraEffectJSONUtility$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/CameraEffectJSONUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnArgumentsBuilder(Lcom/facebook/share/model/CameraEffectArguments$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->putArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    return-void
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
