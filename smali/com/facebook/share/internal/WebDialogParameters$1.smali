.class final Lcom/facebook/share/internal/WebDialogParameters$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/Utility$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/Utility$Mapper<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/WebDialogParameters$1;->apply(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
