.class public Lcom/facebook/share/model/CameraEffectArguments$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/CameraEffectArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/share/model/CameraEffectArguments;",
        "Lcom/facebook/share/model/CameraEffectArguments$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/CameraEffectArguments$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/CameraEffectArguments;
    .locals 2

    .line 168
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/CameraEffectArguments;-><init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;Lcom/facebook/share/model/CameraEffectArguments$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->build()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    return-object v0
.end method

.method public putArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/CameraEffectArguments$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putArgument(Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/share/model/CameraEffectArguments$Builder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectArguments$Builder;
    .locals 1

    .line 155
    const-class v0, Lcom/facebook/share/model/CameraEffectArguments;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/CameraEffectArguments;

    .line 155
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->readFrom(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/CameraEffectArguments$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectArguments;->access$100(Lcom/facebook/share/model/CameraEffectArguments;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 115
    check-cast p1, Lcom/facebook/share/model/CameraEffectArguments;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->readFrom(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    move-result-object p1

    return-object p1
.end method
