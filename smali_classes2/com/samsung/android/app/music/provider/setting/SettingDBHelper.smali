.class final Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;

.field private static b:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "setting.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 131
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;
    .locals 1

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->b:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    return-object v0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    const-string v0, "SettingDBHelper"

    .line 152
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 153
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "updateDatabase fromVersion[%d],  toVersion[%d])"

    const/4 v3, 0x2

    .line 154
    new-array v3, v3, [Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 152
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gt p2, p3, :cond_0

    const-string p2, "CREATE TABLE IF NOT EXISTS setting (name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    .line 168
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE INDEX IF NOT EXISTS name_idx on setting(name)"

    .line 169
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal update request: can\'t downgrade from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Did you forget to wipe data?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingDBHelper"

    .line 161
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;)V
    .locals 0

    .line 130
    sput-object p0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->b:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SettingDBHelper"

    const-string v1, "onCreate"

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 135
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SettingDBHelper"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
