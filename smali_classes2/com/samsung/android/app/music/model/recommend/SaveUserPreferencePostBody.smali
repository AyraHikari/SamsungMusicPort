.class public Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private preferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;",
            ">;)",
            "Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;->preferenceList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
