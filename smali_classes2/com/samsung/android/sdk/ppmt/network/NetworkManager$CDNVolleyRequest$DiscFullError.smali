.class public Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;
.super Lcom/android/volley/VolleyError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiscFullError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;->this$0:Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;

    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    return-void
.end method
