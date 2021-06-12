.class public Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupNameQueryArgs"
.end annotation


# instance fields
.field private final projection:[Ljava/lang/String;

.field private final selection:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->uri:Landroid/net/Uri;

    .line 278
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->projection:[Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->selection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->selection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)Landroid/net/Uri;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)[Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->projection:[Ljava/lang/String;

    return-object p0
.end method
