.class public Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ranking:I

.field private rankingChg:I

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRanking()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->ranking:I

    return v0
.end method

.method public getRankingChange()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->rankingChg:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->word:Ljava/lang/String;

    return-object v0
.end method
