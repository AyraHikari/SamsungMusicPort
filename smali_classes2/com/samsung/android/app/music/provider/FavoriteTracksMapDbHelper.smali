.class public final Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;->b:Z

    return v0
.end method
