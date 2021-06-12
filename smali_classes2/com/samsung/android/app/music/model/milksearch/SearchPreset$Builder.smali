.class public Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/milksearch/SearchPreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->type:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/model/milksearch/SearchPreset;
    .locals 1

    .line 140
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;-><init>(Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;)V

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
