.class public Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/util/List;)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;",
            ">;)",
            "Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;-><init>()V

    .line 16
    iput p0, v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->type:I

    .line 17
    iput-object p1, v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public static makeEmptyMode(I)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;
    .locals 1

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;-><init>()V

    .line 25
    iput p0, v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->type:I

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->list:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
