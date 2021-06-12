.class public Lcom/samsung/android/sdk/smp/storage/PrefManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PrefManager"


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/integer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 121
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/long/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 138
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/string/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 87
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 88
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/boolean/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 105
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 6

    if-nez p1, :cond_0

    .line 168
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/boolean/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "true"

    const-string v0, "value"

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 182
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6

    if-nez p1, :cond_0

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/integer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 196
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 197
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "value"

    .line 198
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 202
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 6

    if-nez p1, :cond_0

    .line 208
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/long/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "value"

    .line 218
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 219
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 220
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 222
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b:Z

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.smp.pref.provider/string/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "value"

    .line 158
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_2
    return-object p2
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "aid"

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_color"

    .line 360
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 359
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 367
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chan_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 366
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "optintime"

    .line 283
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 11

    monitor-enter p0

    .line 410
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a:Ljava/lang/String;

    const-string v1, "migrate ppmt data"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sppmt"

    const/4 v1, 0x0

    .line 414
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 415
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "ppmtid"

    const/4 v2, 0x0

    .line 416
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "uid"

    .line 417
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "noti_sound_uri"

    .line 418
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "noti_sound_enabled"

    .line 419
    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "noti_vibrate_pattern"

    .line 420
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "noti_vibrate_enabled"

    .line 421
    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 422
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    const-string v8, "noti_color"

    .line 423
    invoke-interface {p1, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v8, "bAgreementDate"

    .line 424
    invoke-interface {p1, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "chan_1"

    .line 425
    invoke-interface {p1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "chan_2"

    .line 426
    invoke-interface {p1, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 429
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f(Ljava/lang/String;)V

    .line 432
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->g(Ljava/lang/String;)V

    .line 434
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "noti_vibrate_pattern"

    .line 435
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(Z)V

    .line 437
    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->e(Z)V

    .line 438
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(I)V

    .line 439
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 441
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :catch_0
    :cond_4
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 446
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(ILjava/lang/String;)V

    .line 447
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 448
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(ILjava/lang/String;)V

    .line 450
    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 409
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "aid"

    .line 240
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 239
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "optin"

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "spp_app_id"

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 370
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chan_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "smp_first_upload_time"

    .line 289
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "spp_app_id"

    .line 246
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "user_opt_in_option"

    .line 300
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 299
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "smpid"

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "confVersion"

    .line 382
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 381
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "last_upload_try_time"

    .line 292
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "smpid"

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "tracking"

    .line 312
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 311
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "upload_fail_count"

    .line 395
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 394
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "uploadDelay"

    .line 388
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 387
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 257
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_enabled"

    .line 327
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 326
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    .line 264
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 263
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_enabled"

    .line 354
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 353
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "uid"

    const-string v1, ""

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "uid"

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 270
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_uri"

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 319
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "optin"

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "optintime"

    const-wide/16 v1, 0x0

    .line 286
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "smp_first_upload_time"

    const-wide/16 v1, 0x0

    .line 290
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "last_upload_try_time"

    const-wide/16 v1, 0x0

    .line 295
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "user_opt_in_option"

    const/4 v1, 0x0

    .line 303
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "debug"

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "tracking"

    const/4 v1, 0x0

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_uri"

    const-string v1, ""

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_enabled"

    const/4 v1, 0x0

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()[J
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_pattern"

    const-string v1, ""

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 344
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 346
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 347
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 349
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 351
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 340
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_enabled"

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()I
    .locals 2

    monitor-enter p0

    .line 363
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v0, 0x0

    const-string v1, "noti_color"

    .line 364
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 362
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_group"

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "confVersion"

    const/4 v1, -0x1

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "uploadDelay"

    const-wide/16 v1, 0x3c

    .line 391
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "upload_fail_count"

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ppmt_migr"

    const/4 v1, 0x1

    .line 402
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 401
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ppmt_migr"

    const/4 v1, 0x0

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
