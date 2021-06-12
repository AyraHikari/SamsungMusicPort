.class final Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$3;
.super Landroid/arch/persistence/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/arch/persistence/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE play_list ADD COLUMN play_position INTEGER NOT NULL DEFAULT -1"

    .line 36
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE play_list ADD COLUMN play_audio_id INTEGER NOT NULL DEFAULT 0"

    .line 39
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->c(Ljava/lang/String;)V

    return-void
.end method
