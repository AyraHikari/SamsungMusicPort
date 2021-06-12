.class public Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseQueryArgs"
.end annotation


# static fields
.field protected static final LOCAL_TRACK_SELECTION:Ljava/lang/String;


# instance fields
.field public final projection:[Ljava/lang/String;

.field protected selection:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected selectionArgs:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->uri:Landroid/net/Uri;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 164
    array-length p1, p3

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    return-void

    .line 169
    :cond_0
    array-length p2, p4

    mul-int v0, p1, p2

    .line 171
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    const-string v3, "("

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_2

    if-nez v3, :cond_1

    .line 178
    aget-object v4, p3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v4, "AND "

    .line 180
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    mul-int v5, v2, p2

    add-int/2addr v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, -0x1

    if-ne v2, v3, :cond_3

    const-string v3, ")"

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v3, ") OR "

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->selection:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BaseQueryArgs() - keywords: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
