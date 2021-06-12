.class public final Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

.field private static c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    .line 24
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c:Landroid/util/LruCache;

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;

    const-string v1, "DurationDescriptions"

    const/16 v2, 0x258

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    .line 131
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seekbar_n_of_n:I

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 133
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 134
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 132
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 123
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_slider:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 125
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seekbar:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->e(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 200
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c:Landroid/util/LruCache;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 209
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_title_nowplaying:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    .line 211
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c:Landroid/util/LruCache;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, ", "

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 179
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_title_nowplaying:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    .line 181
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, ", "

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 192
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_title_nowplaying:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    .line 194
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 167
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 58
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "(?i).*TalkBackService.*"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 152
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_named_button:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 65
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 148
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_named_button:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->d(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 232
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_named_header:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    if-ne p1, v1, :cond_0

    .line 111
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_hour:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_hours:I

    .line 112
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    if-ne p1, v1, :cond_1

    .line 107
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_minute:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_minutes:I

    .line 108
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    if-ne p1, v1, :cond_2

    .line 103
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_second:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seconds:I

    .line 104
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 241
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab_n_of_n:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
