.class public interface abstract Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/CameraEffectJSONUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Setter"
.end annotation


# virtual methods
.method public abstract setOnArgumentsBuilder(Lcom/facebook/share/model/CameraEffectArguments$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
