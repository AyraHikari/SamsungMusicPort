.class public Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultAssemblerQueryArgs"
.end annotation


# instance fields
.field private final resultAssembler:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->resultAssembler:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->resultAssembler:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;

    return-object p0
.end method
