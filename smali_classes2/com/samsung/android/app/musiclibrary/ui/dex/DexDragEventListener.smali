.class public final Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final a:Ljava/lang/String; = "DexDragEventListener"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 137
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 140
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertUrisToLongArray() id is null. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] uri was wrong."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 146
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Landroid/view/DragEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-nez p1, :cond_1

    .line 78
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    const-string v0, "isEnableForDrop clipDes is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_2

    .line 83
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    const-string v0, "isEnableForDrop extras is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "secdndfiletype"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 88
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    const-string v0, "isEnableForDrop fileType is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 91
    :cond_3
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    const-string v4, "audio/"

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "AUDIO/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method private b(Landroid/view/DragEvent;)Z
    .locals 8

    .line 103
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 114
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDrop uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->c:Landroid/content/Context;

    .line 124
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMusicProviderIds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 125
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 129
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop convertedIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->b(Ljava/util/List;)[J

    move-result-object p1

    const/4 v0, 0x4

    .line 131
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JI)V

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_4
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->b:Ljava/lang/String;

    const-string v1, "onDrop There is no playable song."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private b(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    .line 40
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 65
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a:Ljava/lang/String;

    const-string p2, "Unknown action type received by OnDragListener."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    .line 57
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->b(Landroid/view/DragEvent;)Z

    return v0

    :pswitch_4
    return v0

    .line 46
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;->a(Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
