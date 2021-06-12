.class public Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;
.super Lcom/samsung/android/app/music/model/browse/main/DatabaseCache;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "YearMenuModel"


# instance fields
.field private updateDate:Ljava/lang/String;

.field private years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/browse/main/DatabaseCache;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->years:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "YearMenuModel"

    const-string v1, "equalUpdateDateWithDB"

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->updateDate:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->equalUpdateDateWithDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fromJson(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;
    .locals 1

    .line 56
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    return-object p1
.end method

.method public getJson()Ljava/lang/String;
    .locals 2

    const-string v0, "YearMenuModel"

    const-string v1, "getJson"

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getYears()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->years:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upsetDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "YearMenuModel"

    const-string v1, "upsetDB"

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->updateDate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->upset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
