.class public abstract Lcom/samsung/android/castingfindermanager/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/Device;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/samsung/android/castingfindermanager/Device;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Device;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/Device;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Device;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/Device;->c()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 18
    instance-of v0, p1, Lcom/samsung/android/castingfindermanager/Device;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/castingfindermanager/Device;

    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/Device;->a(Lcom/samsung/android/castingfindermanager/Device;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Device;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Device;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Device;->c()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/castingfindermanager/Utils;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
