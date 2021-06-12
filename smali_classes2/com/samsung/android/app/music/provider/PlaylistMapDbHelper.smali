.class public final Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-PlaylistMapDbHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->c:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->b:Ljava/lang/String;

    return-object v0
.end method
