.class public final Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;JLandroid/content/ContentValues;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;JLandroid/content/ContentValues;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->b:Z

    return v0
.end method
