.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtainThreadLocal(Ljava/lang/Class;)Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
