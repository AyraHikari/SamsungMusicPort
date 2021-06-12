.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPostFix()Ljava/lang/String;
.end method

.method public abstract getSecureType()I
.end method
