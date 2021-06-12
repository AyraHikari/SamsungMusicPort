.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Members"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 900
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "_display_name_pinyin"

    goto :goto_0

    :cond_0
    const-string v0, "_display_name"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    return-void
.end method
