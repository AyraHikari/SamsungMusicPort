.class public final Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, "0016"

    .line 89
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "0014"

    .line 90
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "0015"

    .line 91
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "0072"

    .line 92
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static b()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, "841"

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "0016"

    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "0014"

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "8101"

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "8102"

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, "518"

    .line 108
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6154"

    .line 109
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6152"

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6153"

    .line 111
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method public static d()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 168
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->g()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->f()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->h()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->j()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->i()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static e()V
    .locals 2

    const-string v0, "518"

    const-string v1, "6151"

    .line 228
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, "517"

    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6135"

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6133"

    .line 119
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6134"

    .line 120
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6132"

    .line 121
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->g(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6136"

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 127
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, ""

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6194"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6192"

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6193"

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6195"

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 137
    new-instance v0, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v1, "521"

    .line 138
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6215"

    .line 139
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6214"

    .line 140
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    const-string v1, "6215"

    .line 141
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;-><init>()V

    const-string v1, "0022"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method private static j()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;-><init>()V

    const-string v1, "0021"

    .line 153
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method
