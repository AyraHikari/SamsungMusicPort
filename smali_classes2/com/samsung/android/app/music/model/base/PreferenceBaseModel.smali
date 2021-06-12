.class public Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected level:I

.field protected preId:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->type:I

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->preId:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->level:I

    return v0
.end method

.method public getPreId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->preId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->type:I

    return v0
.end method

.method public setLevel(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->level:I

    return-void
.end method

.method public setPreId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->preId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], preId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->preId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], level]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
