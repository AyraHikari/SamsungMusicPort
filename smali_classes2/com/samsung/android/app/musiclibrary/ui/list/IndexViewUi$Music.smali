.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi$Music;
.super Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Music"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 337
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_index_view_background:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 338
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_index_scroll_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 339
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_index_scroll_pressed_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 340
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_index_scroll_effect:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 341
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_index_scroll_effect_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    .line 336
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
