.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "content_quality"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
