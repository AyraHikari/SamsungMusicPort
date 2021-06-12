.class public Landroid/support/v4/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompat"

.field private static final sTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    goto :goto_0

    .line 51
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 52
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    goto :goto_0

    .line 54
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 55
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    .line 64
    :goto_0
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 167
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 116
    instance-of v4, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v4, :cond_3

    .line 117
    move-object v0, p1

    check-cast v0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p7, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    .line 122
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    .line 124
    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Landroid/support/v4/provider/FontRequest;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    .line 127
    :cond_3
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    move-object v0, p1

    check-cast v0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-interface {v1, p0, v0, p2, p4}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p5, v0, p6}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_3

    :cond_4
    const/4 v1, -0x3

    .line 133
    invoke-virtual {p5, v1, p6}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 140
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-static {p1, p2, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 156
    sget-object p2, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p1, p0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 89
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
