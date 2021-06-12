.class final Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic d:Landroid/content/ContentValues;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->d:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->f:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->d:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;->f:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
