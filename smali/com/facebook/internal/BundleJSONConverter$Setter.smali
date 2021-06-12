.class public interface abstract Lcom/facebook/internal/BundleJSONConverter$Setter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/BundleJSONConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Setter"
.end annotation


# virtual methods
.method public abstract setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
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
